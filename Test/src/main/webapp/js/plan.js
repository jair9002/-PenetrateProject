 document.getElementById('completePlanInputBtn').addEventListener('click', function (event) {
            event.preventDefault();

            const root = document.getElementById('root').value;
            const placename = document.getElementById('placename').value;
            const expectPrice = document.getElementById('expectPrice').value;
            const planAddress = document.getElementById('plan-address').value;

            const contentContainer = document.getElementById('content-container');

            const newRow = document.createElement('div');
            newRow.classList.add('row', 'mb-3', 'p-2', 'bg-light', 'rounded');
            newRow.innerHTML = `
                <div class="col-md-6"><strong>분류:</strong> ${root}</div>
                <div class="col-md-6"><strong>장소:</strong> ${placename}</div>
                <div class="col-md-6"><strong>예상 금액:</strong> ${expectPrice}</div>
                <div class="col-md-6"><strong>주소:</strong> ${planAddress}</div>
            `;
            contentContainer.appendChild(newRow);


            
            const editableDiv = document.createElement('div');
            editableDiv.setAttribute('contenteditable', 'true');
            editableDiv.classList.add('editable');
            editableDiv.setAttribute('data-placeholder', '상세 일정 기입');
            
            contentContainer.appendChild(editableDiv);

            
        });
