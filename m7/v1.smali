.class public Lm7/v1;
.super Lm7/x1;
.source ""

# interfaces
.implements Lm7/v;


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lm7/s1;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm7/x1;-><init>(Z)V

    invoke-virtual {p0, p1}, Lm7/x1;->V(Lm7/s1;)V

    invoke-virtual {p0}, Lm7/x1;->R()Lm7/s;

    move-result-object p1

    instance-of v1, p1, Lm7/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    check-cast p1, Lm7/t;

    goto :goto_14

    :cond_13
    move-object p1, v2

    :goto_14
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lm7/w1;->j()Lm7/x1;

    move-result-object p1

    if-nez p1, :cond_1e

    goto :goto_39

    :cond_1e
    invoke-virtual {p1}, Lm7/x1;->O()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_3a

    :cond_25
    invoke-virtual {p1}, Lm7/x1;->R()Lm7/s;

    move-result-object p1

    instance-of v3, p1, Lm7/t;

    if-eqz v3, :cond_30

    check-cast p1, Lm7/t;

    goto :goto_31

    :cond_30
    move-object p1, v2

    :goto_31
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lm7/w1;->j()Lm7/x1;

    move-result-object p1

    if-nez p1, :cond_1e

    :cond_39
    :goto_39
    move v0, v1

    :goto_3a
    iput-boolean v0, p0, Lm7/v1;->c:Z

    return-void
.end method


# virtual methods
.method public O()Z
    .registers 1

    iget-boolean p0, p0, Lm7/v1;->c:Z

    return p0
.end method

.method public P()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
