.class public final Lv3/f0;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Lv3/r$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/f0$a;

    invoke-direct {v0}, Lv3/f0$a;-><init>()V

    sput-object v0, Lv3/f0;->a:Lv3/r$a;

    return-void
.end method
