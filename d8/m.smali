.class public Ld8/m;
.super Ld8/n;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ld8/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    const-string p0, "favorites_simplify"

    return-object p0
.end method
