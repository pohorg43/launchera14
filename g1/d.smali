.class public final Lg1/d;
.super Lf1/a;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf1/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:La1/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lf1/a;-><init>()V

    new-instance v0, La1/e;

    invoke-direct {v0}, La1/e;-><init>()V

    iput-object v0, p0, Lg1/d;->b:La1/d;

    return-void
.end method
