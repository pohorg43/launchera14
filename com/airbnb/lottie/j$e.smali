.class public Lcom/airbnb/lottie/j$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/j$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/j;->a(Lk/f;Ljava/lang/Object;Ls/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk/f;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ls/c;

.field public final synthetic d:Lcom/airbnb/lottie/j;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lk/f;Ljava/lang/Object;Ls/c;)V
    .registers 5

    iput-object p1, p0, Lcom/airbnb/lottie/j$e;->d:Lcom/airbnb/lottie/j;

    iput-object p2, p0, Lcom/airbnb/lottie/j$e;->a:Lk/f;

    iput-object p3, p0, Lcom/airbnb/lottie/j$e;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/j$e;->c:Ls/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/d;)V
    .registers 4

    iget-object p1, p0, Lcom/airbnb/lottie/j$e;->d:Lcom/airbnb/lottie/j;

    iget-object v0, p0, Lcom/airbnb/lottie/j$e;->a:Lk/f;

    iget-object v1, p0, Lcom/airbnb/lottie/j$e;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/j$e;->c:Ls/c;

    invoke-virtual {p1, v0, v1, p0}, Lcom/airbnb/lottie/j;->a(Lk/f;Ljava/lang/Object;Ls/c;)V

    return-void
.end method
