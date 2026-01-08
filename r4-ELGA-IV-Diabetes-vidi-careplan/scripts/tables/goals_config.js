export const i_goals_config = {
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
  langs:{
  "lang-en":{ //German default
    "columns":{
        "lifecycleStatus":"Status", 
        "category": "Category", 
        "priority": "Priority",
        "description": "Description",
        "startDate": "Start",
        "target": "Target",
        "expressedBy": "Expressed By",
      },
    },
  },
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
      responsive: 0,
    },
    {
      title: "Status",
      field: "lifecycleStatus",
      responsive: 0,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Kategorie",
      field: "category",
      responsive: 0,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Priorität",
      field: "priority",
      responsive: 0,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Beschreibung",
      field: "description",
      responsive: 2,
      width: 340,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Beginn",
      field: "startDate",
      responsive: 1,
      width: 190,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const erstellt = row_data?.startDate;
        const date = new Date(erstellt);
        const formatted = date.toLocaleString('de-AT', { day: '2-digit', month: '2-digit', year: 'numeric' }) ;

        return formatted;
      },
    },
    {
      title: "Ziel",
      field: "target",
      responsive: 2,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const target = row_data?.target;

        let targets = "";
        target.forEach(function (item, index){
          targets += item.measure + "<br/>";
        });

        return targets;
      },
    },
    {
      title: "Anforderer",
      field: "expressedBy",
      responsive: 2,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
  ],
};

export const v_goals_config = {
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
  langs:{
  "lang-en":{ //German default
    "columns":{
        "category":"Category", 
        "description": "Description", 
        "startDate": "Start",
      },
    },
  },
  columns: [
    {
      title: "Kategorie",
      field: "category",
      responsive: 0,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Beschreibung",
      field: "description",
      responsive: 2,
      width: 340,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Beginn",
      field: "startDate",
      responsive: 1,
      width: 190,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const erstellt = row_data?.startDate;
        const date = new Date(erstellt);
        const formatted = date.toLocaleString('de-AT', { day: '2-digit', month: '2-digit', year: 'numeric' }) ;

        return formatted;
      },
    },
  ],
};
