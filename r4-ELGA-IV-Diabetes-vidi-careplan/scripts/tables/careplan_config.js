export const i_careplan_config = {
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
            "title":"Title", 
            "erstellt_am": "Creationdate", 
            "abklaerung": "Clarification", 
            "task_aktivitaet": "Task/Aktivity", 
            "status": "Status", 
            "ziel": "Goal", 
            "verantwortlich": "Responsible Person", 

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
      title: "Titel",
      field: "titel",
      responsive: 0,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Erstellt",
      field: "erstellt_am",
      responsive: 1,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const erstellt = row_data?.erstellt_am;
        const date = new Date(erstellt);
        const formatted = date.toLocaleString('de-AT', { day: '2-digit', month: '2-digit', year: 'numeric' }) ;

        return formatted;
      },
    },
    {
      title: "Abklärung",
      field: "abklaerung",
      responsive: 2,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Status",
      field: "status",
      responsive: 4,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Ziel",
      field: "ziel",
      responsive: 0,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const ziel = row_data?.ziel;

        let ziele = "";
        ziel.forEach(function (item, index){
          ziele += item.ziel + "<br/>";
        });

        return ziele;
      },
    },
    {
      title: "Verantwortlich",
      field: "verantwortlich",
      responsive: 5,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
  ],
};

export const v_careplan_config = {
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
        "title":"Title", 
        "erstellt_am": "Creationdate", 
        "abklaerung": "Clarification", 
        "task_aktivitaet": "Task/Aktivity", 
        "status": "Status", 
        "ziel": "Goal", 
        "verantwortlich": "Responsible Person", 

    },
  },
},
  columns: [
    {
      title: "Titel",
      field: "titel",
      responsive: 0,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Abklärung",
      field: "abklaerung",
      responsive: 1,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Ziel",
      field: "ziel",
      responsive: 2,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const ziel = row_data?.ziel;

        let ziele = "";
        ziel.forEach(function (item, index){
          ziele += item.ziel + "<br/>";
        });

        return ziele;
      },
    },
  ],
};
