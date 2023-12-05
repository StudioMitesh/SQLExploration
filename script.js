document.addEventListener('DOMContentLoaded', function() {
    var searchForm = document.getElementById('searchForm');

    searchForm.addEventListener('searchBtn', function(event) {
        event.preventDefault(); // Prevent the default form submission

        var searchInput = document.getElementById('searchInput').value;

        // You can perform additional validation on the input if needed

        // Call a function to send the data to the server
        sendSearchRequest(searchInput);
    });

    function sendSearchRequest(searchInput) {
        // Use AJAX or Fetch API to send a request to the server
        // Include the search input in the request body

        // Example using Fetch API
        fetch('/search', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ searchInput: searchInput }),
        })
        .then(response => response.json())
        .then(data => {
            // Handle the response from the server (e.g., display results)
            console.log(data);
        })
        .catch(error => {
            console.error('Error:', error);
        });
    }
});
