import { Navbar } from "../../components/navbar"

export function Home() {
  return (
    <>
      <Navbar fixed="true" />
      <div className="w-full pt-0 h-[2000px] bg-purple-light mt-0">
        <h1 className="pt-5 text-purple-dark text-center">This is the Home page</h1>
      </div>

    </>
  )
}


