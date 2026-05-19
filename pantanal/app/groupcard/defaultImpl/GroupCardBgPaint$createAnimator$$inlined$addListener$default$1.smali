.class public final Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createAnimator(ZJLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 GroupCardBgPaint.kt\npantanal/app/groupcard/defaultImpl/GroupCardBgPaint\n*L\n1#1,127:1\n98#2:128\n126#3,9:129\n122#3,3:138\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $animIn$inlined:Z

.field public final synthetic $animIn$inlined$1:Z

.field public final synthetic this$0:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;


# direct methods
.method public constructor <init>(ZLpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;ZLpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;)V
    .registers 6

    iput-boolean p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->$animIn$inlined:Z

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->this$0:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    iput-boolean p4, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->$animIn$inlined$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 14

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "GroupCardBgPaint"

    const-string v3, "createAnimator,anim onCancel"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->this$0:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    iget-boolean p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->$animIn$inlined$1:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->access$setMNeedDraw(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 14

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "GroupCardBgPaint"

    const-string v3, "createAnimator,anim onEnd"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->$animIn$inlined:Z

    if-nez p1, :cond_21

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->this$0:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->access$setMNeedDraw(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Z)V

    :cond_21
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 14

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "GroupCardBgPaint"

    const-string v3, "createAnimator,anim onStart"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;->this$0:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->access$setMNeedDraw(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Z)V

    return-void
.end method
