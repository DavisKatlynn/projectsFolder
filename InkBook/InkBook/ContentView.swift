//
//  ContentView.swift
//  InkBook
//
//  Created by Katlynn Davis on 3/18/23.
//

import SwiftUI

struct AccountFormView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var appointmentDate = Date()
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var address = ""
    @State private var isSaved = false
    @State private var showingAppointmentAlert = false
    
    
    var body: some View {
        Form {
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
            TextField("Phone Number", text: $phoneNumber)
            TextField("Email", text: $email)
            TextField("Address", text: $address)
            DatePicker("Appointment", selection: $appointmentDate)
                .datePickerStyle(GraphicalDatePickerStyle())
            Button("Save Appointment") {
                showingAppointmentAlert = true
            }
            .alert("Your appointment has been scheduled for \(appointmentDate)!", isPresented: $showingAppointmentAlert) {
                Button("OK Great!", role: .cancel) { }
            }
        }
        .navigationTitle("Account")
        .navigationBarItems(trailing:
                    Button(action: {
                        self.isSaved = true
                    }) {
                        Text("Save")
                    }
                )
            }
        }

struct ArtistSelectionView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("InkBook")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(.black))
                
                
                Text("Please Select an Artist")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(.black))
            }
            VStack{
                PrimaryButton(text: "Tim")
                PrimaryButton(text: "Cody")
                PrimaryButton(text: "Stephanie")
                PrimaryButton(text: "Jimmy")
                VStack{
                    PrimaryButton(text: "Jake")
                    PrimaryButton(text: "Jamison")
                    PrimaryButton(text: "Bryant")
                    PrimaryButton(text: "Chris")
                    PrimaryButton(text: "Tom (Piercings)")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), (.green), (.blue), (.green), (.teal), (.green)]), startPoint: .bottomLeading, endPoint: .trailing))
    }
}
    
struct MyUpcomingAppointmentsView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var address = ""

        var body: some View {
            VStack {
                Text("Upcoming Appointments")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Name: \(firstName) \(lastName)")
                    Text("Birthdate: \(birthdate, formatter: DateFormatter(from: "MM/dd/yyyy"))")
                    Text("Phone Number: \(phoneNumber)")
                    Text("Email: \(email)")
                    Text("Address: \(address)")
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("My Appointments")
        }
    }

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var address = ""
    @State private var isSaved = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Account", destination: AccountFormView())
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), (.green), (.blue), (.green), (.teal), (.green)]), startPoint: .bottomLeading, endPoint: .trailing))
                NavigationLink("Select an Artist", destination: ArtistSelectionView())
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), (.green), (.blue), (.green), (.teal), (.green)]), startPoint: .bottomLeading, endPoint: .trailing))
            }
        }
//

            .navigationTitle("InkBook")
            
        }
    
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension DateFormatter {
    convenience init(from format: String) {
        self.init()
        self.dateFormat = format
    }
}



//import SwiftUI
//
//struct AccountFormView: View {
//    @Binding var artist: String? // add a binding to keep track of the selected artist
//
//    @State private var firstName = ""
//    @State private var lastName = ""
//    @State private var birthdate = Date()
//    @State private var phoneNumber = ""
//    @State private var email = ""
//    @State private var address = ""
//
//    var body: some View {
//        Form {
//            TextField("First Name", text: $firstName)
//            TextField("Last Name", text: $lastName)
//            TextField("Phone Number", text: $phoneNumber)
//            TextField("Email", text: $email)
//            TextField("Address", text: $address)
//            DatePicker("Appointment", selection: $birthdate)
//                .datePickerStyle(GraphicalDatePickerStyle())
//        }
//        .navigationTitle(artist!) // use the selected artist as the navigation title
//    }
//}
//
//struct ArtistSelectionView: View {
//    @State private var selectedArtist: String? // add a state variable to keep track of the selected artist
//
//    var body: some View {
//        VStack(spacing: 40) {
//            VStack(spacing: 20) {
//                Text("InkBook")
//                    .font(.title)
//                    .fontWeight(.heavy)
//                    .foregroundColor(Color(.black))
//
//                Text("Please Select an Artist")
//                    .fontWeight(.heavy)
//                    .foregroundColor(Color(.black))
//            }
//            VStack{
//                Button("Tim", action: { self.selectedArtist = "Tim" })
//                Button("Cody", action: { self.selectedArtist = "Cody" })
//                Button("Stephanie", action: { self.selectedArtist = "Stephanie" })
//                Button("Jimmy", action: { self.selectedArtist = "Jimmy" })
//                VStack{
//                    Button("Jake", action: { self.selectedArtist = "Jake" })
//                    Button("Jamison", action: { self.selectedArtist = "Jamison" })
//                    Button("Bryant", action: { self.selectedArtist = "Bryant" })
//                    Button("Chris", action: { self.selectedArtist = "Chris" })
//                    Button("Tom (Piercings)", action: { self.selectedArtist = "Tom (Piercings)" })
//                }
//            }
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .edgesIgnoringSafeArea(.all)
//        .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), (.green), (.blue), (.green), (.teal), (.green)]), startPoint: .bottomLeading, endPoint: .trailing))
//        .background(
//            NavigationLink(
//                destination: AccountFormView(artist: $selectedArtist),
//                isActive: Binding<Bool>(
//                    get: { selectedArtist != nil },
//                    set: { isActive in
//                        if !isActive {
//                            selectedArtist = nil
//                        }
//                    }
//                )
//            ) {
//                EmptyView()
//            }.hidden()
//        )
//    }
//
//
//    struct ContentView: View {
//        var body: some View {
//            NavigationView {
//                ArtistSelectionView()
//                    .navigationTitle("InkBook")
//            }
//        }
//    }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
    
    //struct ContentView: View {
    //    @State private var firstName = ""
    //    @State private var lastName = ""
    //    @State private var birthdate = Date()
    //    @State private var phoneNumber = ""
    //    @State private var email = ""
    //    @State private var address = ""
    //
    //
    //    var body: some View {
    //        NavigationView {
    //            Form {
    //                TextField("First Name", text: $firstName)
    //                TextField("Last Name", text: $lastName)
    //                TextField("Phone Number", text: $phoneNumber)
    //                TextField("Email", text: $email)
    //                TextField("Address", text: $address)
    //                DatePicker("Appointment", selection: $birthdate)
    //                    .datePickerStyle(GraphicalDatePickerStyle())
    //            }
    //            .navigationTitle("Account")
    //        }
    //
    //    }
    //}
    //                VStack(spacing: 40) {
    //                    VStack(spacing: 20) {
    //                        Text("InkBook")
    //                            .font(.title)
    //                            .fontWeight(.heavy)
    //                            .foregroundColor(Color(.black))
    //
    //                        Text("Please Select an Artist")
    //                            .fontWeight(.heavy)
    //                            .foregroundColor(Color(.black))
    //                    }
    //                    VStack{
    //                        PrimaryButton(text: "Tim")
    //                        PrimaryButton(text: "Cody")
    //                        PrimaryButton(text: "Stephanie")
    //                        PrimaryButton(text: "Jimmy")
    //                        VStack{
    //                            PrimaryButton(text: "Jake")
    //                            PrimaryButton(text: "Jamison")
    //                            PrimaryButton(text: "Bryant")
    //                            PrimaryButton(text: "Chris")
    //                            PrimaryButton(text: "Tom (Piercings)")
    //                        }
    //                    }
    //                }
    //                .frame(maxWidth: .infinity, maxHeight: .infinity)
    //                .edgesIgnoringSafeArea(.all)
    //                .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), (.green), (.blue), (.green), (.teal), (.green)]), startPoint: .bottomLeading, endPoint: .trailing))
    //}
    //    struct ContentView_Previews: PreviewProvider {
    //        static var previews: some View {
    //            ContentView()
    //        }
    //    }
