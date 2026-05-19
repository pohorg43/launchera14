.class public final synthetic Lcom/android/launcher3/d2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/d2;

.field public static final synthetic c:Lcom/android/launcher3/d2;

.field public static final synthetic d:Lcom/android/launcher3/d2;

.field public static final synthetic e:Lcom/android/launcher3/d2;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/d2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/d2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d2;->b:Lcom/android/launcher3/d2;

    new-instance v0, Lcom/android/launcher3/d2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/d2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d2;->c:Lcom/android/launcher3/d2;

    new-instance v0, Lcom/android/launcher3/d2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/d2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d2;->d:Lcom/android/launcher3/d2;

    new-instance v0, Lcom/android/launcher3/d2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/d2;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d2;->e:Lcom/android/launcher3/d2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/d2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/d2;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_1d

    :pswitch_6  #0x2
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x1
    check-cast p1, Ljava/lang/CharSequence;

    sget p0, Lcom/android/launcher3/folder/Folder;->MIN_CONTENT_DIMEN:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16  #0x0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :goto_1d
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->i(Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_d  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
