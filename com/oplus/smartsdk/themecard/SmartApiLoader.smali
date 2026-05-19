.class public final Lcom/oplus/smartsdk/themecard/SmartApiLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/themecard/ApiLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/themecard/SmartApiLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/SmartApiLoader;",
        "Lcom/oplus/smartsdk/themecard/ApiLoader;",
        "Landroid/content/Context;",
        "hostContext",
        "",
        "forceLoad",
        "Lh4/z;",
        "tryLoadSmartClassInternal",
        "context",
        "isForceLoad",
        "Lh4/j;",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "loadApi",
        "api",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "Ljava/lang/Class;",
        "smartImplClass",
        "Ljava/lang/Class;",
        "Lcom/oplus/smartsdk/InflaterFactory;",
        "inflaterFactory",
        "Lcom/oplus/smartsdk/InflaterFactory;",
        "loadSuccess",
        "Z",
        "Lcom/oplus/smartsdk/PluginContext;",
        "pluginContext",
        "Lcom/oplus/smartsdk/PluginContext;",
        "<init>",
        "()V",
        "Companion",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/smartsdk/themecard/SmartApiLoader$Companion;

.field private static final SMART_IMPL_NAME:Ljava/lang/String; = "com.oplus.smartengine.SmartViewImpl"

.field public static final SMART_PACKAGE:Ljava/lang/String; = "com.oplus.smartengine"

.field private static final TAG:Ljava/lang/String; = "SmartApiLoader"


# instance fields
.field private api:Lcom/oplus/smartsdk/ISmartViewApi;

.field private inflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

.field private loadSuccess:Z

.field private pluginContext:Lcom/oplus/smartsdk/PluginContext;

.field private smartImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/smartsdk/themecard/SmartApiLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/smartsdk/themecard/SmartApiLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->Companion:Lcom/oplus/smartsdk/themecard/SmartApiLoader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final tryLoadSmartClassInternal(Landroid/content/Context;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->loadSuccess:Z

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    const-string p0, "SmartApiLoader"

    const-string p1, "tryLoadSmartClassInternal forceLoad is false!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->loadSuccess:Z

    const-string v0, "com.oplus.smartengine"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Lcom/oplus/smartsdk/SmartClassLoader;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oplus/smartsdk/SmartClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v0, "com.oplus.smartengine.SmartViewImpl"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->smartImplClass:Ljava/lang/Class;

    new-instance v0, Lcom/oplus/smartsdk/PluginContext;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, p2, v2, p1}, Lcom/oplus/smartsdk/PluginContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->pluginContext:Lcom/oplus/smartsdk/PluginContext;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-class p2, Landroid/view/LayoutInflater;

    const-string v0, "mFactory2"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->inflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    if-nez v2, :cond_5c

    new-instance v2, Lcom/oplus/smartsdk/InflaterFactory;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/oplus/smartsdk/InflaterFactory;-><init>(Landroid/view/LayoutInflater$Factory2;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->inflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    :cond_5c
    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->inflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->loadSuccess:Z

    return-void
.end method


# virtual methods
.method public isForceLoad(Landroid/content/Context;)Z
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/smartsdk/SmartVersionApi;->getInstance(Landroid/content/Context;)Lcom/oplus/smartsdk/SmartVersionApi;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/smartsdk/SmartVersionApi;->reloadSmartEngine(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public loadApi(Landroid/content/Context;)Lh4/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lh4/j<",
            "Lcom/oplus/smartsdk/ISmartViewApi;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "hostContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->api:Lcom/oplus/smartsdk/ISmartViewApi;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->isForceLoad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->inflaterFactory:Lcom/oplus/smartsdk/InflaterFactory;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->tryLoadSmartClassInternal(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->smartImplClass:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.oplus.smartsdk.ISmartViewApi"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/oplus/smartsdk/ISmartViewApi;

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->api:Lcom/oplus/smartsdk/ISmartViewApi;

    :cond_28
    new-instance v0, Lh4/j;

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->api:Lcom/oplus/smartsdk/ISmartViewApi;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;->pluginContext:Lcom/oplus/smartsdk/PluginContext;

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    move-object p1, p0

    :goto_35
    invoke-direct {v0, v1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
