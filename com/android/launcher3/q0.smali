.class public final synthetic Lcom/android/launcher3/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q0;->a:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/q0;->a:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherAppState;->c(Lcom/android/launcher3/LauncherAppState;Z)V

    return-void
.end method
