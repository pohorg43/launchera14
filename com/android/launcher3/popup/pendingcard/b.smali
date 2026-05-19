.class public final synthetic Lcom/android/launcher3/popup/pendingcard/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/b;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/b;->a:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
