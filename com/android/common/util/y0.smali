.class public final synthetic Lcom/android/common/util/y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/common/util/y0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/y0;

    invoke-direct {v0}, Lcom/android/common/util/y0;-><init>()V

    sput-object v0, Lcom/android/common/util/y0;->a:Lcom/android/common/util/y0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->c()V

    return-void
.end method
