.class public Ll5/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/b;-><init>(Lx6/m;Lh6/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/r0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/b;


# direct methods
.method public constructor <init>(Ll5/b;)V
    .registers 2

    iput-object p1, p0, Ll5/b$c;->a:Ll5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ll5/s;

    iget-object p0, p0, Ll5/b$c;->a:Ll5/b;

    invoke-direct {v0, p0}, Ll5/s;-><init>(Li5/e;)V

    return-object v0
.end method
