.class public Landroidx/constraintlayout/core/parser/CLElement;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static BASE_INDENT:I = 0x2

.field public static MAX_LINE:I = 0x50


# instance fields
.field public end:J

.field private line:I

.field public mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

.field private final mContent:[C

.field public start:J


# direct methods
.method public constructor <init>([C)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    return-void
.end method


# virtual methods
.method public addIndent(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    if-ge p0, p2, :cond_b

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public content()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_22

    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_19

    goto :goto_22

    :cond_19
    long-to-int p0, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int p0, v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContainer()Landroidx/constraintlayout/core/parser/CLElement;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    return-object p0
.end method

.method public getDebugName()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method public getEnd()J
    .registers 3

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    return-wide v0
.end method

.method public getFloat()F
    .registers 2

    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v0, :cond_b

    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    move-result p0

    return p0

    :cond_b
    const/high16 p0, 0x7fc00000  # Float.NaN

    return p0
.end method

.method public getInt()I
    .registers 2

    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v0, :cond_b

    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getInt()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getLine()I
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/parser/CLElement;->line:I

    return p0
.end method

.method public getStart()J
    .registers 3

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    return-wide v0
.end method

.method public getStrClass()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDone()Z
    .registers 5

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isStarted()Z
    .registers 5

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public notStarted()Z
    .registers 5

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    return-void
.end method

.method public setEnd(J)V
    .registers 7

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    sget-boolean p1, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz p1, :cond_30

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "closing "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30
    iget-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz p1, :cond_37

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->add(Landroidx/constraintlayout/core/parser/CLElement;)V

    :cond_37
    return-void
.end method

.method public setLine(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->line:I

    return-void
.end method

.method public setStart(J)V
    .registers 3

    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    return-void
.end method

.method public toFormattedJSON(II)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    return-object p0
.end method

.method public toJSON()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_57

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    goto :goto_57

    :cond_12
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v1, v1

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") <<"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_57
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (INVALID, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
