import { ref } from "vue";

export const menuStore = ref({
  isClickedMenu: false,
  setIsClickedMenu(value: boolean) {
    this.isClickedMenu = value;
  },
});
