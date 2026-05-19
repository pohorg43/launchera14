.class public Lio/requery/android/database/sqlite/SQLiteStatementType;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getSqlStatementType(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "WIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto/16 :goto_b3

    :cond_25
    const-string v0, "INS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "UPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "REP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "DEL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_b1

    :cond_46
    const-string v0, "ATT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    return v2

    :cond_4f
    const-string v0, "COM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "END"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_af

    :cond_60
    const-string v0, "ROL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 p0, 0x6

    return p0

    :cond_6a
    const-string v0, "BEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 p0, 0x4

    return p0

    :cond_74
    const-string v0, "PRA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const/4 p0, 0x7

    return p0

    :cond_7e
    const-string v0, "CRE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "DRO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "ALT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_ac

    :cond_97
    const-string v0, "ANA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "DET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a8

    goto :goto_a9

    :cond_a8
    return v1

    :cond_a9
    :goto_a9
    const/16 p0, 0x9

    return p0

    :cond_ac
    :goto_ac
    const/16 p0, 0x8

    return p0

    :cond_af
    :goto_af
    const/4 p0, 0x5

    return p0

    :cond_b1
    :goto_b1
    const/4 p0, 0x2

    return p0

    :cond_b3
    :goto_b3
    const/4 p0, 0x1

    return p0
.end method
