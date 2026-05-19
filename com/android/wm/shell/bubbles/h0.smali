.class public final synthetic Lcom/android/wm/shell/bubbles/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/bubbles/h0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/bubbles/h0;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/h0;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/h0;->a:Lcom/android/wm/shell/bubbles/h0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleData;->f(Lcom/android/wm/shell/bubbles/Bubble;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
