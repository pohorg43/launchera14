.class public Lp1/h;
.super Lp1/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp1/a<",
        "Lp1/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lp1/a;-><init>()V

    return-void
.end method
