.class public final synthetic Lcom/android/launcher3/taskbar/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/b0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/b0;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/b0;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/b0;->a:Lcom/android/launcher3/taskbar/b0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->G(I)Z

    move-result p0

    return p0
.end method
