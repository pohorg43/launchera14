.class public final synthetic Lcom/android/launcher3/touch/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/i;

.field public static final synthetic b:Lcom/android/launcher3/touch/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/touch/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/i;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/i;->a:Lcom/android/launcher3/touch/i;

    new-instance v0, Lcom/android/launcher3/touch/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/i;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/i;->b:Lcom/android/launcher3/touch/i;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->d(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    return-object p0
.end method
