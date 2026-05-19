.class public final synthetic Lcom/android/launcher3/hotseat/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/hotseat/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/a;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/a;->a:Lcom/android/launcher3/hotseat/a;

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

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->b()V

    return-void
.end method
