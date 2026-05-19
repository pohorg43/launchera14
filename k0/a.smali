.class public final synthetic Lk0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lk0/a;

.field public static final synthetic b:Lk0/a;

.field public static final synthetic c:Lk0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lk0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk0/a;-><init>(I)V

    sput-object v0, Lk0/a;->a:Lk0/a;

    new-instance v0, Lk0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk0/a;-><init>(I)V

    sput-object v0, Lk0/a;->b:Lk0/a;

    new-instance v0, Lk0/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk0/a;-><init>(I)V

    sput-object v0, Lk0/a;->c:Lk0/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public newView(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->a(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
