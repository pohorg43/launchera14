.class public final Lv7/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/h;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv7/h;


# direct methods
.method public constructor <init>(Lv7/h;)V
    .registers 2

    iput-object p1, p0, Lv7/h$a;->a:Lv7/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lv7/h$a;->a:Lv7/h;

    invoke-virtual {p0}, Lv7/h;->d()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
