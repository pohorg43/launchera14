.class public final synthetic Lcom/android/wm/shell/bubbles/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/bubbles/j0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/bubbles/j0;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/j0;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/j0;->a:Lcom/android/wm/shell/bubbles/j0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    move-result-wide p0

    return-wide p0
.end method
