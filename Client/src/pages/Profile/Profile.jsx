import { Navbar } from "../../components/navbar"
export const Profile = () => {
  return (
    <>
      <Navbar />
      <section className="w-full pt-0 h-screen bg-purple-light mt-0 flex justify-center">
        <div className="bg-slate w-[960px] h-[500px] rounded mt-20">
          <h1 className="pt-5 text-purple-dark text-center" >This is the Profile page</h1>
        </div>
      </section>
    </>

  )
}