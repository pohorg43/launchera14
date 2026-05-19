.class public abstract Ly6/r1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/q1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ly6/q1;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->b()Z

    move-result v1

    invoke-interface {p1}, Ly6/q1;->b()Z

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-interface {p0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v1

    invoke-interface {p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v3

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly6/l0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    return v2

    :cond_31
    return v0
.end method

.method public hashCode()I
    .registers 3

    invoke-interface {p0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v1

    invoke-static {v1}, Ly6/a2;->q(Ly6/l0;)Z

    move-result v1

    if-eqz v1, :cond_17

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x13

    goto :goto_2b

    :cond_17
    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Ly6/q1;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 p0, 0x11

    goto :goto_2a

    :cond_22
    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->hashCode()I

    move-result p0

    :goto_2a
    add-int/2addr v0, p0

    :goto_2b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-interface {p0}, Ly6/q1;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "*"

    return-object p0

    :cond_9
    invoke-interface {p0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    if-ne v0, v1, :cond_1a

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
