.class public final synthetic Lcom/android/launcher3/model/a2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/a2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/a2;

    invoke-direct {v0}, Lcom/android/launcher3/model/a2;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/a2;->a:Lcom/android/launcher3/model/a2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/model/WellbeingModel;->h(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
