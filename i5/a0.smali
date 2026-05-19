.class public final Li5/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/b<",
            "Li5/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh/b;

    const-string v1, "InvalidModuleNotifier"

    invoke-direct {v0, v1}, Lh/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Li5/a0;->a:Lh/b;

    return-void
.end method
