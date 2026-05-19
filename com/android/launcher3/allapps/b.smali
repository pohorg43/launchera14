.class public final synthetic Lcom/android/launcher3/allapps/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/allapps/b;

.field public static final synthetic c:Lcom/android/launcher3/allapps/b;

.field public static final synthetic d:Lcom/android/launcher3/allapps/b;

.field public static final synthetic e:Lcom/android/launcher3/allapps/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/b;->b:Lcom/android/launcher3/allapps/b;

    new-instance v0, Lcom/android/launcher3/allapps/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/b;->c:Lcom/android/launcher3/allapps/b;

    new-instance v0, Lcom/android/launcher3/allapps/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/b;->d:Lcom/android/launcher3/allapps/b;

    new-instance v0, Lcom/android/launcher3/allapps/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/b;->e:Lcom/android/launcher3/allapps/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/allapps/b;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_1b

    :pswitch_6  #0x2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->n(Ljava/util/Map$Entry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x1
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/WellbeingModel;->e(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x0
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-static {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->i(Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    return-object p0

    :goto_1b
    check-cast p1, Lz3/a;

    invoke-interface {p1}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_d  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
