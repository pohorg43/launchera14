.class public abstract Li5/t;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Li5/i1;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c(Ls6/g;Li5/p;Li5/l;Z)Z
.end method

.method public abstract d()Li5/t;
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Li5/t;->a()Li5/i1;

    move-result-object p0

    invoke-virtual {p0}, Li5/i1;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
