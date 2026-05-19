.class public final synthetic Lm0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lm0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lm0/a;

    invoke-direct {v0}, Lm0/a;-><init>()V

    sput-object v0, Lm0/a;->a:Lm0/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->a(Landroid/content/Context;)Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    move-result-object p0

    return-object p0
.end method
