export const i_immunizations_config = {
  layout: "fitDataStretch",
  responsiveLayout: "collapse",
  rowHeader: {
    formatter: "responsiveCollapse",
    hozAlign: "center",
    resizable: false,
    headerSort: false,
    cssClass: "wrap-text",
  },
  responsiveLayoutCollapseStartOpen: false,
  columns: [
    {
      title: "",
      field: "marked",
      width: 55,
      minWidth: 55,
      hozAlign: "center",
      formatter: function (cell) {
        const data = cell.getRow().getData();
        const symbol = data.marked === 1 ? '⚠️' : data.marked === 2 ? '?' : '▢';
        return `
          <span class="status-icon" style="cursor:pointer;">${symbol}</span>
        `;
      },
      cellClick: function (e, cell) {
        const rowData = cell.getRow().getData();

        if (rowData.marked === undefined) {
          rowData.marked = 0;
        }
        rowData.marked = (rowData.marked + 1) % 3;
        cell.getRow().update(rowData);
      },
      responsive: 1,
    },
    {
      title: "Zeitpunkt",
      field: "zeitpunkt",
      responsive: 3,
        width: 150,
        minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Impfung",
      field: "name",
      responsive: 0,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Impfziel",
      field: "immunizationtarget",
      responsive: 0,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const immunizationtarget = row_data?.immunizationtarget;

        let target = "";
        immunizationtarget.forEach(function (item, index){
          target += item.immunizationtarget + "<br/>";
        });

        return target;
      },
    }
  ],
};

export const v_results_config = {
  layout: "fitDataStretch",
  responsiveLayout: "collapse",
  rowHeader: {
    formatter: "responsiveCollapse",
    hozAlign: "center",
    resizable: false,
    headerSort: false,
    cssClass: "wrap-text",
  },
  responsiveLayoutCollapseStartOpen: false,
  columns: [
    {
      title: "Zeitpunkt",
      field: "zeitpunkt",
      responsive: 2,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Gemessener <br>Wert",
      field: "gemessenerWert",
      responsive: 0,
      width: 500,
      cssClass: "wrap-text",
    },
    {
      title: "Ergebnis",
      field: "ergebnis",
      responsive: 1,
      minWidth: 150,
      cssClass: "wrap-text",
    },
  ],
};
