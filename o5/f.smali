.class public abstract Lo5/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly5/b;


# instance fields
.field public final a:Lh6/f;


# direct methods
.method public constructor <init>(Lh6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/f;->a:Lh6/f;

    return-void
.end method


# virtual methods
.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, Lo5/f;->a:Lh6/f;

    return-object p0
.end method
