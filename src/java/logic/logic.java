
package logic;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;


public class logic {

    private static String hql_brand = "from Cars c where c.marka like '";
    private static String hql_year = "from Cars c where c.rok between ";
    private static String hql_type = "from Cars c where c.nadwozie = '";
    private static String hql_fuel = "from Cars c where c.paliwo = '";
    private static String hql_damage = "from Cars c where c.stan = 'Uszkodzony'";
    private static String hql_allCars = "from Cars";

    public static List runQueryBrand(String brand) {

        List list = execute(hql_brand + brand + "%'");
        return list;

    }

    public static List runQueryYear(String yearFrom, String yearTo) {

        List list = execute(hql_year + yearFrom + " and " + yearTo);
        return list;
    }

    public static List runQueryType(String type) {
        List list = execute(hql_type + type + "'");
        return list;
    }

    public static List runQueryFuel(String fuel) {
        List list = execute(hql_fuel + fuel + "'");
        return list;
    }

    public static List runQueryDamage() {
        List list = execute(hql_damage);
        return list;
    }

    public static List runQueryTypeFuel(String type, String fuel) {
        List list = execute(hql_type + type + "' and c.paliwo = '" + fuel + "'");
        return list;
    }

    public static List runQueryBrandType(String brand, String type) {
        List list = execute(hql_brand + brand + "%' and c.nadwozie = '" + type + "'");
        return list;
    }

    public static List runQueryBrandFuel(String brand, String fuel) {
        List list = execute(hql_brand + brand + "%' and c.paliwo = '" + fuel + "'");
        return list;
    }

    public static List runQueryBrandTypeFuel(String brand, String type, String fuel) {
        List list = execute(hql_brand + brand + "%' and c.nadwozie = '" + type + "' and c.paliwo = '" + fuel + "'");
        return list;
    }
       public static List runQueryShowAllCars() {
        List list = execute(hql_allCars);
        return list;
    }

    public static List execute(String hql) {

        List resultList = null;

        try {

            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Query query = session.createQuery(hql);
            resultList = query.list();
            session.getTransaction().commit();

        } catch (HibernateException e) {

        }
        return resultList;
    }

}
