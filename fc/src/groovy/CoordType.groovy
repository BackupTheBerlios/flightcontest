enum CoordType 
{
	UNKNOWN ('Unknown', '',    0, '',        'fc.coordtype.unknown'),
	TO      ('T/O',     'T/O', 0, '',        'fc.coordtype.to'),
	SP      ('SP',      'SP',  0, '',        'fc.coordtype.sp'),
    SECRET  ('Secret',  'CP',  2, '$secret', 'fc.coordtype.secret'),
	TP      ('TP',      'CP',  0, '',        'fc.coordtype.tp'),
	FP      ('FP',      'FP',  0, '',        'fc.coordtype.fp'),
	LDG     ('LDG',     'LDG', 0, '',        'fc.coordtype.ldg')
	
	CoordType(String title, String aflosMark, int aflosGateWidth, String secretMark, String code)
	{
		this.title = title
		this.aflosMark = aflosMark
		this.aflosGateWidth = aflosGateWidth
		this.secretMark = secretMark
		this.code = code
	}
	
	final String title
	final String aflosMark
	final int aflosGateWidth
	final String secretMark
	final String code
	
	static List listNextValues(actValue)
	{
		List l = []
        switch(actValue) {
        	case CoordType.TO:
        		l += CoordType.TO
        		l += CoordType.SP
        		break
        	case CoordType.SP:
                l += CoordType.SP
                l += CoordType.LDG
                break
            case CoordType.TP:
                l += CoordType.TP
                l += CoordType.FP
                break
            case CoordType.LDG:
                l += CoordType.LDG
                break
            case CoordType.SECRET:
                l += CoordType.SECRET
                break
		}
		return l
	}
}