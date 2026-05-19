.class public final synthetic Lcom/android/launcher3/t2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/t2;

.field public static final synthetic b:Lcom/android/launcher3/t2;

.field public static final synthetic c:Lcom/android/launcher3/t2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/t2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/t2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/t2;->a:Lcom/android/launcher3/t2;

    new-instance v0, Lcom/android/launcher3/t2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/t2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/t2;->b:Lcom/android/launcher3/t2;

    new-instance v0, Lcom/android/launcher3/t2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/t2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/t2;->c:Lcom/android/launcher3/t2;

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

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/graphics/Insets;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public shouldIncludeView(Landroid/view/View;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/PagedView;->f(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
