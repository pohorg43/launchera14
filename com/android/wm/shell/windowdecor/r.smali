.class public final synthetic Lcom/android/wm/shell/windowdecor/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/windowdecor/r;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/windowdecor/r;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/r;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/r;->a:Lcom/android/wm/shell/windowdecor/r;

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

    new-instance p0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    return-object p0
.end method
