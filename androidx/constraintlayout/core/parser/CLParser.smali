.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field public static DEBUG:Z


# instance fields
.field private hasComment:Z

.field private lineNumber:I

.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 9

    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_24

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v2, p5, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_24
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_6a

    move-object p3, v0

    goto :goto_51

    :pswitch_32  #0x6
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    :pswitch_37  #0x5
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    :pswitch_3c  #0x4
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    :pswitch_41  #0x3
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    :pswitch_46  #0x2
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4f

    :pswitch_4b  #0x1
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p3

    :goto_4f
    add-int/lit8 p2, p2, 0x1

    :goto_51
    if-nez p3, :cond_54

    return-object v0

    :cond_54
    iget p0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {p3, p0}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    if-eqz p4, :cond_5f

    int-to-long p4, p2

    invoke-virtual {p3, p4, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    :cond_5f
    instance-of p0, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz p0, :cond_68

    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    :cond_68
    return-object p3

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_46  #00000002
        :pswitch_41  #00000003
        :pswitch_3c  #00000004
        :pswitch_37  #00000005
        :pswitch_32  #00000006
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p2, v0, :cond_d5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_d5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_d5

    const/16 v0, 0x20

    if-eq p2, v0, :cond_d5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_ba

    const/16 v0, 0x27

    if-eq p2, v0, :cond_ba

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_ae

    const/16 v0, 0x5d

    if-eq p2, v0, :cond_9f

    const/16 v0, 0x7b

    if-eq p2, v0, :cond_93

    const/16 v0, 0x7d

    if-eq p2, v0, :cond_9f

    packed-switch p2, :pswitch_data_d6

    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz v0, :cond_6b

    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v0, :cond_6b

    sget-object v4, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v0, p1

    invoke-virtual {p4, p2, v0, v1}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto/16 :goto_d5

    :cond_4a
    new-instance p1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incorrect token <"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "> at line "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p4}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw p1

    :cond_6b
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto/16 :goto_d5

    :pswitch_78  #0x2f
    const/4 p2, 0x1

    add-int/2addr p1, p2

    array-length v0, p4

    if-ge p1, v0, :cond_d5

    aget-char p1, p4, p1

    const/16 p4, 0x2f

    if-ne p1, p4, :cond_d5

    iput-boolean p2, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    goto/16 :goto_d5

    :pswitch_87  #0x2b, 0x2d, 0x2e, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    :cond_93
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    :cond_9f
    add-int/lit8 p0, p1, -0x1

    int-to-long v0, p0

    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    int-to-long p0, p1

    invoke-virtual {p3, p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_d5

    :cond_ae
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    :cond_ba
    instance-of p2, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz p2, :cond_ca

    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    :cond_ca
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    :cond_d5
    :goto_d5
    :pswitch_d5  #0x2c, 0x3a
    return-object p3

    :pswitch_data_d6
    .packed-switch 0x2b
        :pswitch_87  #0000002b
        :pswitch_d5  #0000002c
        :pswitch_87  #0000002d
        :pswitch_87  #0000002e
        :pswitch_78  #0000002f
        :pswitch_87  #00000030
        :pswitch_87  #00000031
        :pswitch_87  #00000032
        :pswitch_87  #00000033
        :pswitch_87  #00000034
        :pswitch_87  #00000035
        :pswitch_87  #00000036
        :pswitch_87  #00000037
        :pswitch_87  #00000038
        :pswitch_87  #00000039
        :pswitch_d5  #0000003a
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    const/4 v5, -0x1

    const/16 v6, 0xa

    if-ge v4, v1, :cond_22

    aget-char v7, v0, v4

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_18

    goto :goto_23

    :cond_18
    if-ne v7, v6, :cond_1f

    iget v5, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/2addr v5, v2

    iput v5, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_22
    move v4, v5

    :goto_23
    if-eq v4, v5, :cond_183

    invoke-static {v0}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v5

    iget v7, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    int-to-long v7, v4

    invoke-virtual {v5, v7, v8}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/2addr v4, v2

    move-object v7, v5

    :goto_34
    if-ge v4, v1, :cond_148

    aget-char v8, v0, v4

    if-ne v8, v6, :cond_3f

    iget v9, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/2addr v9, v2

    iput v9, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    :cond_3f
    iget-boolean v2, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    if-eqz v2, :cond_47

    if-ne v8, v6, :cond_142

    iput-boolean v3, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    :cond_47
    if-nez v7, :cond_4b

    goto/16 :goto_148

    :cond_4b
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-direct {p0, v4, v8, v7, v0}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    :cond_55
    :goto_55
    move-object v7, v2

    goto/16 :goto_129

    :cond_58
    instance-of v2, v7, Landroidx/constraintlayout/core/parser/CLObject;

    const/16 v3, 0x7d

    if-eqz v2, :cond_6d

    if-ne v8, v3, :cond_68

    add-int/lit8 v2, v4, -0x1

    int-to-long v2, v2

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_129

    :cond_68
    invoke-direct {p0, v4, v8, v7, v0}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    goto :goto_55

    :cond_6d
    instance-of v2, v7, Landroidx/constraintlayout/core/parser/CLArray;

    const/16 v9, 0x5d

    if-eqz v2, :cond_82

    if-ne v8, v9, :cond_7d

    add-int/lit8 v2, v4, -0x1

    int-to-long v2, v2

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_129

    :cond_7d
    invoke-direct {p0, v4, v8, v7, v0}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    goto :goto_55

    :cond_82
    instance-of v2, v7, Landroidx/constraintlayout/core/parser/CLString;

    const-wide/16 v10, 0x1

    if-eqz v2, :cond_9b

    iget-wide v2, v7, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v9, v2

    aget-char v9, v0, v9

    if-ne v9, v8, :cond_129

    add-long/2addr v2, v10

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v2, v4, -0x1

    int-to-long v2, v2

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_129

    :cond_9b
    instance-of v12, v7, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v12, :cond_cc

    move-object v12, v7

    check-cast v12, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v13, v4

    invoke-virtual {v12, v8, v13, v14}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result v13

    if-eqz v13, :cond_aa

    goto :goto_cc

    :cond_aa
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string/jumbo v1, "parsing incorrect token "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v12}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    :cond_cc
    :goto_cc
    instance-of v12, v7, Landroidx/constraintlayout/core/parser/CLKey;

    if-nez v12, :cond_d2

    if-eqz v2, :cond_eb

    :cond_d2
    iget-wide v12, v7, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v2, v12

    aget-char v2, v0, v2

    const/16 v14, 0x27

    if-eq v2, v14, :cond_df

    const/16 v14, 0x22

    if-ne v2, v14, :cond_eb

    :cond_df
    if-ne v2, v8, :cond_eb

    add-long/2addr v12, v10

    invoke-virtual {v7, v12, v13}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v2, v4, -0x1

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    :cond_eb
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v2

    if-nez v2, :cond_129

    if-eq v8, v3, :cond_10b

    if-eq v8, v9, :cond_10b

    const/16 v2, 0x2c

    if-eq v8, v2, :cond_10b

    const/16 v2, 0x20

    if-eq v8, v2, :cond_10b

    const/16 v2, 0x9

    if-eq v8, v2, :cond_10b

    const/16 v2, 0xd

    if-eq v8, v2, :cond_10b

    if-eq v8, v6, :cond_10b

    const/16 v2, 0x3a

    if-ne v8, v2, :cond_129

    :cond_10b
    add-int/lit8 v2, v4, -0x1

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    if-eq v8, v3, :cond_115

    if-ne v8, v9, :cond_129

    :cond_115
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v3, :cond_55

    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_55

    :cond_129
    :goto_129
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v2

    if-eqz v2, :cond_142

    instance-of v2, v7, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v2, :cond_13e

    move-object v2, v7

    check-cast v2, Landroidx/constraintlayout/core/parser/CLKey;

    iget-object v2, v2, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_142

    :cond_13e
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    :cond_142
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_34

    :cond_148
    :goto_148
    if-eqz v7, :cond_168

    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result p0

    if-nez p0, :cond_168

    instance-of p0, v7, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz p0, :cond_15d

    iget-wide v2, v7, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int p0, v2

    add-int/lit8 p0, p0, 0x1

    int-to-long v2, p0

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    :cond_15d
    add-int/lit8 p0, v1, -0x1

    int-to-long v2, p0

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    goto :goto_148

    :cond_168
    sget-boolean p0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz p0, :cond_182

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Root: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_182
    return-object v5

    :cond_183
    new-instance p0, Landroidx/constraintlayout/core/parser/CLParsingException;

    const/4 v0, 0x0

    const-string v1, "invalid json content"

    invoke-direct {p0, v1, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw p0
.end method
