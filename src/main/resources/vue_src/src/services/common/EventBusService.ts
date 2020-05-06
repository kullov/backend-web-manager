import Vue from 'vue';

class EventBusService extends Vue {
  // Show dialog message
  public EVENT_SHOW_MESSAGE = 'EVENT_SHOW_MESSAGE';

  // Logging
  public EVENT_LOG = 'EVENT_LOG';

  // For re-render ag-grid table width
  public EVENT_MENU_COLLAPSE = 'EVENT_MENU_COLLAPSE';

  // Screen event
  public EVENT_SCREEN_CHANGE = 'EVENT_SCREEN_CHANGE';
}
export const eventBusService = new EventBusService();
