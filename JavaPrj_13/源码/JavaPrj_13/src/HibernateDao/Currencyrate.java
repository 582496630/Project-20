package HibernateDao;

/**
 * Currencyrate generated by MyEclipse Persistence Tools
 */

public class Currencyrate implements java.io.Serializable {

	// Fields

	private CurrencyrateId id;

	private Currency currencyByCurId;

	private Currency currencyByCurId1;

	// Constructors

	/** default constructor */
	public Currencyrate() {
	}

	/** full constructor */
	public Currencyrate(CurrencyrateId id, Currency currencyByCurId,
			Currency currencyByCurId1) {
		this.id = id;
		this.currencyByCurId = currencyByCurId;
		this.currencyByCurId1 = currencyByCurId1;
	}

	// Property accessors

	public CurrencyrateId getId() {
		return this.id;
	}

	public void setId(CurrencyrateId id) {
		this.id = id;
	}

	public Currency getCurrencyByCurId() {
		return this.currencyByCurId;
	}

	public void setCurrencyByCurId(Currency currencyByCurId) {
		this.currencyByCurId = currencyByCurId;
	}

	public Currency getCurrencyByCurId1() {
		return this.currencyByCurId1;
	}

	public void setCurrencyByCurId1(Currency currencyByCurId1) {
		this.currencyByCurId1 = currencyByCurId1;
	}

}