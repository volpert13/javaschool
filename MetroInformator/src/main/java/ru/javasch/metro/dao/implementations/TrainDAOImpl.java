package ru.javasch.metro.dao.implementations;

import org.hibernate.NonUniqueResultException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.javasch.metro.dao.interfaces.TrainDAO;
import ru.javasch.metro.exception.RuntimeBusinessLogicException;
import ru.javasch.metro.model.Train;

@Repository
public class TrainDAOImpl<E extends Train> extends GenericDAOImpl<E> implements TrainDAO<E> {

    @Override
    public Train findByName(String trainName) {
        try {
            return (Train) sessionFactory.getCurrentSession()
                    .createQuery("from Train where trainName = :trainName")
                    .setParameter("trainName", trainName)
                    .uniqueResult();
        } catch (NonUniqueResultException ex) {
            throw new RuntimeBusinessLogicException("Train already exist");
        } catch (NullPointerException ex) {
            throw new RuntimeBusinessLogicException("Such train doesn't exist");
        }
    }

}