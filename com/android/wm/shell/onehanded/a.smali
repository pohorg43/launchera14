.class public final synthetic Lcom/android/wm/shell/onehanded/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/onehanded/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/onehanded/a;

    invoke-direct {v0}, Lcom/android/wm/shell/onehanded/a;-><init>()V

    sput-object v0, Lcom/android/wm/shell/onehanded/a;->a:Lcom/android/wm/shell/onehanded/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method
