.class public final synthetic Lcom/android/quickstep/logging/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/logging/b;

.field public static final synthetic b:Lcom/android/quickstep/logging/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/logging/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/logging/b;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/logging/b;->a:Lcom/android/quickstep/logging/b;

    new-instance v0, Lcom/android/quickstep/logging/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/logging/b;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/logging/b;->b:Lcom/android/quickstep/logging/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->c(Landroid/content/Context;)Lcom/android/quickstep/logging/SettingsChangeLogger;

    move-result-object p0

    return-object p0
.end method
