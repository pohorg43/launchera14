.class public final Ln7/b;
.super Ll4/a;
.source ""

# interfaces
.implements Lm7/g0;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lm7/g0$a;->a:Lm7/g0$a;

    invoke-direct {p0, v0}, Ll4/a;-><init>(Ll4/f$b;)V

    iput-object p0, p0, Ln7/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleException(Ll4/f;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method
