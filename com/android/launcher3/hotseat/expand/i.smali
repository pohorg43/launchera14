.class public final synthetic Lcom/android/launcher3/hotseat/expand/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/hotseat/expand/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/i;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/i;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/i;->a:Lcom/android/launcher3/hotseat/expand/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->a(Z)V

    return-void
.end method
