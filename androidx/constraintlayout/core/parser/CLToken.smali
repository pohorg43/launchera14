.class public Landroidx/constraintlayout/core/parser/CLToken;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLToken$Type;
    }
.end annotation


# instance fields
.field public index:I

.field public tokenFalse:[C

.field public tokenNull:[C

.field public tokenTrue:[C

.field public type:Landroidx/constraintlayout/core/parser/CLToken$Type;


# direct methods
.method public constructor <init>([C)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    const-string/jumbo p1, "true"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    const-string p1, "false"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    const-string/jumbo p1, "null"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/parser/CLToken;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLToken;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public getBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    if-ne v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    if-ne v0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string/jumbo v1, "this token is not a boolean: <"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0
.end method

.method public getType()Landroidx/constraintlayout/core/parser/CLToken$Type;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    return-object p0
.end method

.method public isNull()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    if-ne v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string/jumbo v1, "this token is not a null: <"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0
.end method

.method public toFormattedJSON(II)Ljava/lang/String;
    .registers 3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/parser/CLElement;->addIndent(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJSON()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "<"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate(CJ)Z
    .registers 9

    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_62

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3c

    const/4 p2, 0x4

    if-eq v0, p2, :cond_18

    goto :goto_74

    :cond_18
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    iget p3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char p2, p2, p3

    if-ne p2, p1, :cond_26

    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    :goto_24
    move v1, v2

    goto :goto_74

    :cond_26
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    aget-char p2, p2, p3

    if-ne p2, p1, :cond_31

    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    goto :goto_24

    :cond_31
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    aget-char p2, p2, p3

    if-ne p2, p1, :cond_74

    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    goto :goto_24

    :cond_3c
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v4, v0, v3

    if-ne v4, p1, :cond_45

    move v1, v2

    :cond_45
    if-eqz v1, :cond_74

    add-int/2addr v3, v2

    array-length p1, v0

    if-ne v3, p1, :cond_74

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_74

    :cond_4f
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v4, v0, v3

    if-ne v4, p1, :cond_58

    move v1, v2

    :cond_58
    if-eqz v1, :cond_74

    add-int/2addr v3, v2

    array-length p1, v0

    if-ne v3, p1, :cond_74

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_74

    :cond_62
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    aget-char v4, v0, v3

    if-ne v4, p1, :cond_6b

    move v1, v2

    :cond_6b
    if-eqz v1, :cond_74

    add-int/2addr v3, v2

    array-length p1, v0

    if-ne v3, p1, :cond_74

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    :cond_74
    :goto_74
    iget p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    return v1
.end method
