.class public final synthetic Lcom/android/launcher3/allapps/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/allapps/e;

.field public static final synthetic c:Lcom/android/launcher3/allapps/e;

.field public static final synthetic d:Lcom/android/launcher3/allapps/e;

.field public static final synthetic e:Lcom/android/launcher3/allapps/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/e;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/e;->b:Lcom/android/launcher3/allapps/e;

    new-instance v0, Lcom/android/launcher3/allapps/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/e;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/e;->c:Lcom/android/launcher3/allapps/e;

    new-instance v0, Lcom/android/launcher3/allapps/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/e;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/e;->d:Lcom/android/launcher3/allapps/e;

    new-instance v0, Lcom/android/launcher3/allapps/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/e;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/e;->e:Lcom/android/launcher3/allapps/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/allapps/e;->a:I

    packed-switch p0, :pswitch_data_22

    goto :goto_1b

    :pswitch_6  #0x2
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->l(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x1
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsModel;->f(Landroid/util/Pair;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x0
    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :goto_1b
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->l(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_d  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
