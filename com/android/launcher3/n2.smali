.class public final synthetic Lcom/android/launcher3/n2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/n2;

.field public static final synthetic b:Lcom/android/launcher3/n2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/n2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/n2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/n2;->a:Lcom/android/launcher3/n2;

    new-instance v0, Lcom/android/launcher3/n2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/n2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/n2;->b:Lcom/android/launcher3/n2;

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

    check-cast p1, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1, p2, p3}, Lcom/android/quickstep/util/TaskViewSimulator;->setTaskRectTranslation(II)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/OplusWorkspace;->P(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
