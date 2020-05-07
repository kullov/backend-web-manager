<template src="./AppDataTableComponent.html"></template>
<style lang="scss" scoped src="./AppDataTableComponent.scss"></style>
<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import { eventBusService } from "@/services";
import { AgGridVue } from "ag-grid-vue";
import { GridOptions, GridReadyEvent } from "ag-grid-community";

@Component({
  components: {
    AgGridVue
  }
})
export default class AppDataTableComponent extends Vue {
  @Prop() public dataSource?: any[]; // Datasource
  @Prop() public columns?: TableColumn[]; // Danh sách cột hiển th�trên bảng, class TableColumn (một custom class đ�định nghĩa các cột)
  @Prop() public selectable?: boolean; // Table có cho phép chọn dòng hay không (row highlight)
  @Prop() public multiple?: boolean; // (ch�có nghĩa nếu selectable = true) Table có cho phép chọn nhiều dòng hay không (multi select)
  @Prop() public autoResize?: boolean; // Table có t�co giãn theo kích thước của màn hình cha hay không
  @Prop() public options?: boolean; // anh Thành giải thích giúp em cái thuộc tính này đ�làm gì th�
  @Prop() public headerHeight?: number; // Đ�cao header (nếu cần hiển th�2 dòng thì set bằng 40)
  @Prop() public pinnedBottomRowData?: any[]; // Danh sách d�liệu s�hiển th�thành 1 dòng được gắn �đáy của table (hiển th�tổng...)
  @Prop() public rowNodeIdHandler?: (data: any) => any;
  @Prop() public rowClassRules?: any;
  @Prop() public getRowClass?: any;
  @Prop() public rowDragManaged?: boolean;
  @Prop() public getRowHeight?: (data: any) => any;
  private privateFixedColumns: TableColumn[] = [];
  private privateColumns: TableColumn[] = [];
  private frameworkComponents: any = null;
  private isVisible: boolean = false;

  private gridOptions: GridOptions = {
    localeText: { noRowsToShow: "該当データがありません。" },
    rowClassRules: this.rowClassRules,
    getRowClass: this.getRowClass,
    suppressCellSelection: true,
    enableBrowserTooltips: false,
    animateRows: true,
    onCellEditingStarted: (event: any) => {
      this.onCellEditingStarted(event);
    },
    onCellEditingStopped: (event: any) => {
      this.onCellEditingStopped(event);
    },
    stopEditingWhenGridLosesFocus: true,
    getRowHeight: this.getRowHeight,
    tabToNextCell: this.tabToNextCell,
    navigateToNextCell: this.navigateToNextCell
  };
  private gridColumnApi: any = null;
  private rowSelection = this.multiple ? "multiple" : "single";
  private lastSelectedRowIndex?: number;
  private lastSelectedCell?: string;

  private created() {
    if (this.columns) {
      this.privateColumns = this.columns.map((column: TableColumn) => {
        column.headerName = (column.headerName || '').toString();
        if (column.headerName.toString() !== '') {
          column.headerTooltip = column.headerName.toString();
        }
        
        if (column.children) {
          column.children.map((children: TableColumn) => {
            children.headerName = (children.headerName || '').toString();
            if (children.headerName.toString() !== '') {
              children.headerTooltip = children.headerName.toString();
            } 
          });
        }
        return column;
      });
    }
    eventBusService.$on(
      eventBusService.EVENT_MENU_COLLAPSE,
      (isCollapse: boolean) => this.refreshTable()
    );
  }

  private mounted() {
    this.gridOptions = Object.assign({}, this.gridOptions, this.options);
    this.gridColumnApi = this.gridOptions.columnApi;
    // Set data
    if (this.gridOptions.api) {
      this.gridOptions.api.setColumnDefs(this.privateColumns as any);
    }
  }

  private onCellEditingStarted(data: any) {
    this.$emit('onCellEditingStarted', data);
  }

  private onCellEditingStopped(data: any) {
    this.$emit('onCellEditingStopped', data);
  }

  private onGridReady(params: GridReadyEvent) {
    (params.api as any).context.beanWrappers.tooltipManager.beanInstance.MOUSEOVER_SHOW_TOOLTIP_TIMEOUT = 0;
    if (this.headerHeight && this.gridOptions.api) {
      this.gridOptions.api.setHeaderHeight(this.headerHeight);
    }
  }

  private visibilityChanged(visible: any) {
    this.isVisible = visible;
    this.refreshTable();
  }

  private onColumnResized() {
    if (this.gridOptions.api) {
      this.gridOptions.api.resetRowHeights();
    }
  }

  private rowClick(row: any) {
    // Save last selected index row
    this.lastSelectedRowIndex = row.rowIndex;
    // Emit selected row data
    this.$emit("rowClick", row.data);
  }

  private cellClick(cell: any) {
    this.lastSelectedCell = cell.colDef.field;
    // Emit cell click data
    this.$emit("cellClick", cell);
  }

  private rowDoubleClick(row: any) {
    // Emit selected row data
    this.$emit("rowDoubleClick", row.data);
  }

  private onSelectionChanged(event: any) {
    // Emit selected change event
    this.$emit(
      "selectionChanged",
      event.api.getSelectedNodes().length,
      event.api.getSelectedNodes()
    );
  }

  private cellValueChanged(event: any) {
    // Emit cellValueChanged event
    this.$emit("cellValueChanged", event);
  }

  public refreshTable() {
    if (this.isVisible && this.autoResize && this.gridOptions.api) {
      this.gridOptions.api.sizeColumnsToFit();
    }
    if (this.columns) {
      this.privateColumns = this.columns.map((column: TableColumn) => {
        column.headerName = (column.headerName || '').toString();
        if (column.headerName.toString() !== '') {
          column.headerTooltip = column.headerName.toString();
        }
        
        if (column.children) {
          column.children.map((children: TableColumn) => {
            children.headerName = (children.headerName || '').toString();
            if (children.headerName.toString() !== '') {
              children.headerTooltip = children.headerName.toString();
            } 
          });
        }
        return column;
      });
    }
  }

  public hideColumn(columnName: string) {
    if (this.gridColumnApi) {
      this.gridColumnApi.setColumnVisible(columnName, false);
    }
  }

  public showColumn(columnName: string) {
    if (this.gridColumnApi) {
      this.gridColumnApi.setColumnVisible(columnName, true);
    }
  }

  public getColumn(key?: string | null) {
    return this.gridColumnApi.getColumn(key);
  }

  public setOptions(options: any) {
    if (options) {
      this.gridOptions = Object.assign({}, this.gridOptions, options);
    }
  }

  public autoSizeColumns() {
    if (this.gridColumnApi) {
      let allColumnIds: any[] = [];
      this.gridColumnApi.getAllColumns().forEach((column: any) => {
        allColumnIds.push(column.colId);
      });
      this.gridColumnApi.autoSizeColumns(allColumnIds);
    }
  }

  public focusRow(
    keyProperties?: string[],
    keyValue?: string[],
    isDelete?: boolean
  ) {
    this.$nextTick(() => {
      if (this.dataSource && this.gridOptions.api) {
        // Select row
        if (this.selectable && !this.multiple && keyProperties && keyValue) {
          if (!isDelete) {
            // Insert + update
            this.gridOptions.api.forEachNode(node => {
              let keyData: string = "";
              for (let key of keyProperties) {
                const data =
                  node.data[key] !== null &&
                  node.data[key] !== "null" &&
                  node.data[key] !== undefined &&
                  node.data[key] !== "undefined"
                    ? node.data[key]
                    : "";
                keyData += data;
              }
              if (keyData === keyValue.join("")) {
                node.setSelected(true);
                this.lastSelectedRowIndex = node.rowIndex;
                if (this.gridOptions.api) {
                  this.gridOptions.api.ensureIndexVisible(node.rowIndex);
                }
              }
            });
          } else {
            // Delete
            if (
              this.lastSelectedRowIndex &&
              this.lastSelectedRowIndex >= this.dataSource.length
            ) {
              this.lastSelectedRowIndex = this.dataSource.length - 1;
            }
            this.gridOptions.api.forEachNode(node => {
              if (node.rowIndex === this.lastSelectedRowIndex) {
                node.setSelected(true);
                this.lastSelectedRowIndex = node.rowIndex;
                if (this.gridOptions.api) {
                  this.gridOptions.api.ensureIndexVisible(node.rowIndex);
                }
              }
            });
          }
        }
      }
    });
  }

  public getCurrentData(): any[] {
    return this.dataSource || [];
  }

  public scrollToTop() {
    if (this.gridOptions.api) {
      this.gridOptions.api.ensureIndexVisible(0, "top");
    }
  }

  public scrollToIndex(index: number) {
    if (this.gridOptions.api) {
      this.gridOptions.api.ensureIndexVisible(index, "top");
    }
  }

  public loadColumn(columns: TableColumn[]) {
    if (columns) {
      this.privateColumns = columns.map((column: TableColumn) => {
        column.headerName = (column.headerName || '').toString();
        if (column.headerName.toString() !== '') {
          column.headerTooltip = column.headerName.toString();
        }
        if (column.children) {
          column.children.map((children: TableColumn) => {
            children.headerName = (children.headerName || '').toString();
            if (children.headerName.toString() !== '') {
              children.headerTooltip = children.headerName.toString();
            } 
          });
        }
        return column;
      });
      if (this.gridOptions.api) {
        this.gridOptions.api.setColumnDefs(this.privateColumns as any);
        this.gridOptions.api.redrawRows();
      }
    }
  }

  public selectAll() {
    if (this.gridOptions.api) {
      this.gridOptions.api.selectAll();
    }
  }

  public deselectAll() {
    if (this.gridOptions.api) {
      this.gridOptions.api.deselectAll();
    }
  }

  public checkAllColumn(columnName: string, flag: boolean) {
    if (this.gridOptions.api && this.dataSource) {
      this.dataSource.forEach(item => (item[columnName] = flag));
      this.gridOptions.api.refreshCells();
    }
  }

  public getSelectedRow() {
    if (this.gridOptions.api) {
      return this.gridOptions.api.getSelectedRows();
    }
    return [];
  }

  public refreshCells() {
    if (this.gridOptions.api) {
      return this.gridOptions.api.refreshCells();
    }
  }

  public getRowNodeId(data: any) {
    return this.rowNodeIdHandler ? this.rowNodeIdHandler(data) : undefined;
  }

  public getApi() {
    if (this.gridOptions.api) {
      return this.gridOptions.api;
    }
    return null;
  }

  public tabToNextCell(params: any) {
    if (params && this.gridOptions.api && params.editing) {
      this.lastSelectedRowIndex = params.nextCellPosition ? params.nextCellPosition.rowIndex : this.lastSelectedRowIndex;
      this.gridOptions.api.forEachNode(node => {
        if (node.rowIndex === this.lastSelectedRowIndex) {
          node.setSelected(true);
          this.lastSelectedRowIndex = node.rowIndex;
          if (this.gridOptions.api) {
            this.gridOptions.api.ensureIndexVisible(node.rowIndex);
          }
        }
      });
      return params.nextCellPosition;
    }
    return null;
  }

  public tabIntoTable(isShiftTap: boolean) {
    if (this.columns && this.gridOptions.api) {
      let firstColumnEditable: string = '';
      let lastColumnEditable: string = '';
      this.columns.forEach(element => {
        if (element.editable) {
          firstColumnEditable = !firstColumnEditable ? (element.field || '') : firstColumnEditable;
          lastColumnEditable = element.field || '';
        }
      });
      if (!isShiftTap) {
        this.gridOptions.api.startEditingCell({
          rowIndex: this.lastSelectedRowIndex || 0,
          colKey: this.lastSelectedCell ? this.lastSelectedCell : firstColumnEditable,
        });
      } else {
        this.gridOptions.api.startEditingCell({
          rowIndex: this.lastSelectedRowIndex !== undefined
            ? this.lastSelectedRowIndex 
            : (this.dataSource ? (this.dataSource.length - 1) : 0),
          colKey: this.lastSelectedCell ? this.lastSelectedCell : lastColumnEditable,
        });
      }
    }
  }

  private navigateToNextCell(params: any) {
    if (!this.gridOptions.api) { return; }
    let previousCell = params.previousCellPosition;
    let suggestedNextCell = params.nextCellPosition;

    let KEY_UP = 38;
    let KEY_DOWN = 40;

    switch (params.key) {
      case KEY_DOWN:
        previousCell = params.previousCellPosition;
        // set selected cell on current cell + 1
        this.gridOptions.api.forEachNode(function(node) {
          if (previousCell.rowIndex + 1 === node.rowIndex) {
            node.setSelected(true);
          }
        });
        return suggestedNextCell;
      case KEY_UP:
        previousCell = params.previousCellPosition;
        // set selected cell on current cell - 1
        this.gridOptions.api.forEachNode(function(node) {
          if (previousCell.rowIndex - 1 === node.rowIndex) {
            node.setSelected(true);
          }
        });
        return suggestedNextCell;
      default:
        return;
    }
  }
}

/*
 * https://www.ag-grid.com/javascript-grid-column-properties/
 * Chính là Column Properties của ag-grid (nhưng không đầy đ� cần cái gì thì thêm cái đấy vào)
 */
export class TableColumn {
  public field?: string | null;
  public headerName?: string | null;
  public width?: any | null;
  public autoHeight?: boolean = false;
  public pinned?: "left" | "right";
  public hide?: boolean = false;
  public resizable?: boolean = true;
  public sortable?: boolean = true;
  public filter?: boolean = false;
  public suppressSizeToFit?: boolean;
  public tooltipField?: string;
  public headerClass?: string = "header-text-center";
  public cellClass?: string;
  public cellStyle?: any;
  public headerCheckboxSelection?: boolean = false;
  public checkboxSelection?: boolean = false;
  public cellRenderer?: any;
  public cellRendererParams?: any;
  public editable?: boolean;
  public cellEditorSelector?: any;
  public cellEditor?: any;
  public cellEditorParams?: any;
  public singleClickEdit: boolean = false;
  public dndSource?: boolean = false;
  public rowDrag?: boolean = false;
  public valueFormatter?: any;
  public cellClassRules?: any;
  public minWidth?: any = 40;
  public maxWidth?: any;
  public flex?: any;

  /* Cell custom rendering: vue component
  The Grid cell's value will be made available implicitly in a data value names params.
  This value will be available to you from the created VueJS lifecycle hook. */
  public cellRendererFramework?: any;
  public cellEditorFramework?: any;

  public headerTooltip?: string;
  public tooltipComponent?: string;

  public maxLength?: number;

  /**
   * These fields are for updating table column data into DB
   */
  public view_field?: string;
  public view_index?: number;
  public view_visible?: number;

  // Deprecated
  public key?: any;
  public label?: any;
  public children?: TableColumn[];

  constructor(init?: Partial<TableColumn>) {
    Object.assign(this, init);
  }
}
</script>
