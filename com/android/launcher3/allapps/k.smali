.class public final synthetic Lcom/android/launcher3/allapps/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/k;->a:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/k;->a:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onAppsUpdated()V

    return-void
.end method
