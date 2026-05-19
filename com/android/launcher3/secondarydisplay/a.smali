.class public final synthetic Lcom/android/launcher3/secondarydisplay/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/a;->a:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/a;->a:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->b(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    return-void
.end method
