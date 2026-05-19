.class public final synthetic Lcom/android/launcher3/taskbar/allapps/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/allapps/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/e;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/allapps/e;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/e;->a:Lcom/android/launcher3/taskbar/allapps/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->a(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method
