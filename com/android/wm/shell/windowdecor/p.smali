.class public final synthetic Lcom/android/wm/shell/windowdecor/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/windowdecor/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/windowdecor/p;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/p;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/p;->a:Lcom/android/wm/shell/windowdecor/p;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method
