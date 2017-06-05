require "http"

class StuartApi
  URL = "https://sandbox-api.stuart.com/v1"

  def initialize
    #@key = "555d5cddd5373d39e2df3891b4345be5346b673fb8a8ec313f067fa928437805"
    #@secret = "e4a4548c3e2b6b12f44d4bc4c21777a96fd974a5fd2a346e79c526379fded306"
    @token = "ad35caae0f22f5432a4a56f874ade520f75c78dcbc77cd55612da27db1badeb9"
    @client = HTTP.auth("Bearer #{@token}").headers("content-type" => "application/x-www-form-urlencoded")
  end

  def create_job_quote(data)
    url = URL + "/jobs/quotes/types"

    payload = {
      transportTypeIds: data[:transportTypeIds],
      origin: data[:origin],
      destination: data[:destination],
      originContactCompany: data[:originContactCompany],
      destinationContactFirstname: data[:destinationContactFirstname],
      destinationContactLastname: data[:destinationContactLastname]
    }

    @client.post(url, form: payload).parse
  end
end

# Example d'appel :
StuartApi.new.create_job_quote({
  origin: "8 Rue de Joinville, 75019",
  destination: "16 Villa Gaudelet, 75011",
  transportTypeIds: "2",
  originCompanyContact: "MaPharmacie",
  destinationContactFirstName: "Clement",
  destinationContactLastName: "Peneranda"
})
