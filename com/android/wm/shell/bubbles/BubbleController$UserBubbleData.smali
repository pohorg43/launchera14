.class Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBubbleData"
.end annotation


# instance fields
.field private final mKeyToShownInShadeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getKeys()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isShownInShade(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
