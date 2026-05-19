.class public final synthetic Lcom/android/quickstep/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d0;->a:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/d0;->a:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/FallbackActivityInterface;->a(Ljava/util/function/Predicate;Lcom/android/quickstep/RecentsActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
